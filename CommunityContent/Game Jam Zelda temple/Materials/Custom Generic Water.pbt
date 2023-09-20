Assets {
  Id: 2752937054773113349
  Name: "Custom Generic Water"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 2485624436960616840
    ParameterOverrides {
      Overrides {
        Name: "deep color"
        Color {
          G: 0.200000048
          B: 0.108609319
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.0700000525
          B: 0.00741723133
          A: 1
        }
      }
      Overrides {
        Name: "emissive"
        Float: 0.318509817
      }
      Overrides {
        Name: "material_scale"
        Float: 0.836282134
      }
      Overrides {
        Name: "speed"
        Float: -0.296199501
      }
      Overrides {
        Name: "opacity"
        Float: 0.684259057
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.628865957
      }
      Overrides {
        Name: "foam shape"
        Float: 1.92645
      }
      Overrides {
        Name: "wind speed"
        Float: 0.548853636
      }
    }
    Assets {
      Id: 2485624436960616840
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
