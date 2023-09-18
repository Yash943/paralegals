Assets {
  Id: 3869141669798765634
  Name: "City Canal - Custom Generic Water"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 2971864532310716341
    ParameterOverrides {
      Overrides {
        Name: "wind direction"
        Vector {
          Y: 1
          Z: 0.2
        }
      }
      Overrides {
        Name: "flow direction"
        Vector {
          Y: 1
          Z: 0.2
        }
      }
    }
    Assets {
      Id: 2971864532310716341
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
