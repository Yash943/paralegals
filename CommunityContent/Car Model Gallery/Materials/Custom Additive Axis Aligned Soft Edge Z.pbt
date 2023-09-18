Assets {
  Id: 7840160674637289645
  Name: "Custom Additive Axis Aligned Soft Edge Z"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 14782941822723656560
    ParameterOverrides {
      Overrides {
        Name: "axis exponent"
        Float: 0
      }
      Overrides {
        Name: "blend distance"
        Float: 0
      }
      Overrides {
        Name: "vertical fade"
        Float: 0
      }
      Overrides {
        Name: "vertical fade exponent"
        Float: 0
      }
    }
    Assets {
      Id: 14782941822723656560
      Name: "Additive Axis Aligned Soft Edge Z"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_additive_axis_aligned_fresnel"
      }
    }
  }
}
