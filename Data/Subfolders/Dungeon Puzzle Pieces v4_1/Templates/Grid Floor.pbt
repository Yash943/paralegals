Assets {
  Id: 14907477425176387033
  Name: "Grid Floor"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7529330217611180472
      Objects {
        Id: 7529330217611180472
        Name: "Grid Floor"
        Transform {
          Scale {
            X: 75.5715408
            Y: 49.3221054
            Z: 10
          }
        }
        ParentId: 6575804144205693784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2367679211453895479
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.24000001
              G: 0.0953642502
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "A collection of components for creating classic dungeon puzzles.\r\n\r\nMake puzzles with buttons, sliding blocks, and light beams!\r\n\r\nDesigned to be very easy to use and edit.  Check the readme for a full explanation!\r\n\r\n\r\n\r\nUpdate:  Slightly changed look of buttons when active, and added gates that close when the buttons are moved."
  }
  SerializationVersion: 125
  DirectlyPublished: true
}
