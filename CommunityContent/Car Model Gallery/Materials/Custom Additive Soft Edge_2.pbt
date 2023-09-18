Assets {
  Id: 3011668930554693694
  Name: "Custom Additive Soft Edge_2"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 8457668037886697838
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "exponent"
        Float: 0
      }
    }
    Assets {
      Id: 8457668037886697838
      Name: "Additive Soft Edge"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_additive_edgefade"
      }
    }
  }
}
