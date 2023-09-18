Assets {
  Id: 11548423338666931083
  Name: "Custom Additive Edgeline Top Fade"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 18012632022206534139
    ParameterOverrides {
      Overrides {
        Name: "overall brightness"
        Float: 0.805513144
      }
      Overrides {
        Name: "edge line brightness"
        Float: 100
      }
      Overrides {
        Name: "vertical fade"
        Float: 0
      }
      Overrides {
        Name: "fresnel"
        Float: 1
      }
      Overrides {
        Name: "fresnel brightness"
        Float: 50
      }
    }
    Assets {
      Id: 18012632022206534139
      Name: "Additive Edgeline Top Fade"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_add_edgeline_sharpline_topfade"
      }
    }
  }
}
