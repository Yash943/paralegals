Assets {
  Id: 9868419897533749624
  Name: "Custom NPC Skin"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 14983374432598045006
    ParameterOverrides {
      Overrides {
        Name: "primary color"
        Color {
          R: 0.760417
          G: 0.581983
          B: 0.495063
          A: 1
        }
      }
      Overrides {
        Name: "secondary color"
        Color {
          R: 0.161458
          G: 0.079222
          B: 0.028071
          A: 1
        }
      }
      Overrides {
        Name: "specular"
        Float: 1
      }
    }
    Assets {
      Id: 14983374432598045006
      Name: "Guy Body Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "npc_guy_basic_skin_001_mi_ref"
      }
    }
  }
}
