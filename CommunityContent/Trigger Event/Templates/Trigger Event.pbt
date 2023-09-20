Assets {
  Id: 13666011369842505287
  Name: "Trigger Event"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10314620857255613910
      Objects {
        Id: 10314620857255613910
        Name: "Trigger Event"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5061506292210014978
        ChildIds: 17753782548859192476
        ChildIds: 666704746082151482
        UnregisteredParameters {
          Overrides {
            Name: "cs:BeginOverlap_EventName"
            String: ""
          }
          Overrides {
            Name: "cs:EndOverlap_EventName"
            String: ""
          }
          Overrides {
            Name: "cs:Interacted_EventName"
            String: ""
          }
          Overrides {
            Name: "cs:BeginOverlap_EventName:tooltip"
            String: "Event you want fired when a player enters this trigger. Leave blank for none."
          }
          Overrides {
            Name: "cs:EndOverlap_EventName:tooltip"
            String: "Event you want fired when a player leaves this trigger. Leave blank for none."
          }
          Overrides {
            Name: "cs:Interacted_EventName:tooltip"
            String: "Event you want fired when a player interacts with this trigger. Leave blank for none."
          }
        }
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
        Id: 17753782548859192476
        Name: "Trigger"
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
        ParentId: 10314620857255613910
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 666704746082151482
        Name: "TriggerEvent"
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
        ParentId: 10314620857255613910
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 10314620857255613910
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 17753782548859192476
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 6793298070129876730
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
    Description: "A trigger that fires an events when entered, left, or interacted. This works well with the utility Core Components to trigger animations and effects."
  }
  SerializationVersion: 125
  DirectlyPublished: true
}
