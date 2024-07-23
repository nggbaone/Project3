package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

    @PostMapping
    public BuildingDTO addOrupdateBuilding(@RequestBody BuildingDTO buildingDTO) {
        return buildingDTO;
    }

    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids) {
        // xuong DB xoa id theo list gui ve
        System.out.print("ok all");
    }

}
