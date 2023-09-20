Assets {
  Id: 6494315403567115633
  Name: "GameTeleporter"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2804907614588443505
      Objects {
        Id: 2804907614588443505
        Name: "GameTeleporter"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4204570838691236369
        ChildIds: 17245915462552078294
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
        Id: 4204570838691236369
        Name: "Trigger"
        Transform {
          Location {
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 2
            Z: 3
          }
        }
        ParentId: 2804907614588443505
        ChildIds: 6687338688125201911
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
          Interactable: true
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
        Id: 6687338688125201911
        Name: "TeleportToAnotherGame"
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
        ParentId: 4204570838691236369
        UnregisteredParameters {
          Overrides {
            Name: "cs:Destination"
            String: "cb193b/battle-of-the-builders"
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
            Id: 14584681144150745808
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17245915462552078294
        Name: "Mesh"
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
        ParentId: 2804907614588443505
        ChildIds: 16567590171523866887
        ChildIds: 15762066326637565376
        ChildIds: 7119377332734004682
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
        Id: 16567590171523866887
        Name: "Arch Fancy Peaked 2m"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1.25
            Z: 1.75
          }
        }
        ParentId: 17245915462552078294
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
            Id: 7600638995390553864
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
      Objects {
        Id: 15762066326637565376
        Name: "Portal VFX"
        Transform {
          Location {
            X: 0.000427246094
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.4
            Z: 0.5
          }
        }
        ParentId: 17245915462552078294
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color A"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              G: 10
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              G: 0.603000045
              A: 1
            }
          }
          Overrides {
            Name: "bp:Scene View Distortion Type"
            Enum {
              Value: "mc:eportalscenedistortiontype:newenumerator2"
            }
          }
          Overrides {
            Name: "bp:Speed"
            Float: 0.142517313
          }
          Overrides {
            Name: "bp:Intersection Distance"
            Float: 29.340332
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Background Texture"
            Enum {
              Value: "mc:eportalbackground:15"
            }
          }
          Overrides {
            Name: "bp:Edge Distance"
            Float: 2
          }
          Overrides {
            Name: "bp:Portal Shape"
            Int: 11
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
        Blueprint {
          BlueprintAsset {
            Id: 6677237403455816226
          }
          TeamSettings {
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
      Objects {
        Id: 7119377332734004682
        Name: "Fairy Dot Volume VFX"
        Transform {
          Location {
            Z: 200
          }
          Rotation {
          }
          Scale {
            X: 1.75
            Y: 4.25
            Z: 4
          }
        }
        ParentId: 17245915462552078294
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Secondary Color"
            Color {
              G: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
          Overrides {
            Name: "bp:Life"
            Float: 2
          }
          Overrides {
            Name: "bp:Density"
            Float: 2
          }
          Overrides {
            Name: "bp:Curl Variance"
            Float: 0
          }
          Overrides {
            Name: "bp:Enable Particle Trail"
            Bool: false
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: true
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
        Blueprint {
          BlueprintAsset {
            Id: 665942027191872790
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
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
      Id: 7600638995390553864
      Name: "Arch Fancy Peaked 2m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arch_fancy_ogive_2m_001"
      }
    }
    Assets {
      Id: 6677237403455816226
      Name: "Portal VFX"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_portal"
      }
    }
    Assets {
      Id: 665942027191872790
      Name: "Fairy Dot Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Swirling_Magic_Column"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Teleports the player to another game.\r\n\r\nright now, it defaults to one of my games, you can change the id to teleport you to any game you like."
  }
  SerializationVersion: 125
  DirectlyPublished: true
}
