Assets {
  Id: 5426803416856632366
  Name: "Basic Mirror"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5235163264135064302
      Objects {
        Id: 5235163264135064302
        Name: "Basic Mirror"
        Transform {
          Scale {
            X: 5
            Y: 5
            Z: 5
          }
        }
        ParentId: 8235604101384154091
        ChildIds: 14255502176283148134
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14255502176283148134
        Name: "Mirror"
        Transform {
          Location {
            Y: 1.45519152e-10
            Z: -4.88281148e-05
          }
          Rotation {
            Pitch: -90
            Roll: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5235163264135064302
        UnregisteredParameters {
          Overrides {
            Name: "cs:Reflective"
            String: "yes"
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3487314555571258192
            }
          }
        }
        WantsNetworking: true
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
            Id: 13369349029113569971
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
      Id: 13369349029113569971
      Name: "Wedge - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_hq_001"
      }
    }
    Assets {
      Id: 3487314555571258192
      Name: "Metal Chrome"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "chrome_001"
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
