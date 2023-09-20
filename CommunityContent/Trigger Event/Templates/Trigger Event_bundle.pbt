Assets {
  Id: 10916340518803597353
  Name: "Trigger Event"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5104778526245641871
      Objects {
        Id: 5104778526245641871
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 13666011369842505287
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "f71ef7e17a60421cb9013731afb4fad0"
    OwnerAccountId: "fc93f85ad76f49f6984403e2f5162bce"
    OwnerName: "Core_Creator"
    Version: "1.1.0"
    Description: "A trigger that fires an events when entered, left, or interacted. This works well with the utility Core Components to trigger animations and effects."
  }
  SerializationVersion: 125
}
