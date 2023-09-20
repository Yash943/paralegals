Assets {
  Id: 17679992540392526447
  Name: "EasyNotifications"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7031400351631019462
      Objects {
        Id: 7031400351631019462
        Name: "EasyNotifications"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 14186374249476052630
        ChildIds: 9846418137462452415
        ChildIds: 14319939489804971962
        ChildIds: 7733334020543577535
        UnregisteredParameters {
          Overrides {
            Name: "cs:VerticalDirection"
            Int: 0
          }
          Overrides {
            Name: "cs:HorizontalDirection"
            Int: 1
          }
          Overrides {
            Name: "cs:TrackResources"
            Bool: true
          }
          Overrides {
            Name: "cs:ExcludeResources"
            String: ""
          }
          Overrides {
            Name: "cs:IncludeResources"
            String: ""
          }
          Overrides {
            Name: "cs:TrackGameRounds"
            Bool: true
          }
          Overrides {
            Name: "cs:TrackPlayers"
            Bool: true
          }
          Overrides {
            Name: "cs:TrackDeaths"
            Bool: true
          }
          Overrides {
            Name: "cs:VerticalDirection:tooltip"
            String: "The direction the notifications follow when they appear. 0 = from bottom to top /// 1 = from top to bottom"
          }
          Overrides {
            Name: "cs:HorizontalDirection:tooltip"
            String: "The direction the notifications follow when they appear. 0 = from left to right /// 1 = from right to left"
          }
          Overrides {
            Name: "cs:TrackResources:tooltip"
            String: "If enabled, notifications will be send to a player whose resource are updated."
          }
          Overrides {
            Name: "cs:TrackGameRounds:tooltip"
            String: "If enabled, a notifications will be send to every player in the game when a round starts or stops."
          }
          Overrides {
            Name: "cs:TrackPlayers:tooltip"
            String: "If enabled, a notification is sent to every player in the game when a player joins or leaves the game."
          }
          Overrides {
            Name: "cs:TrackDeaths:tooltip"
            String: "If enabled, a notification is sent to every player in the game when a player dies."
          }
          Overrides {
            Name: "cs:ExcludeResources:tooltip"
            String: "If you don\'t want the system to track some resources, type them separated by a ; here. Eg. \"Gems;Money\" Leave empty to not exclude any ressources!"
          }
          Overrides {
            Name: "cs:IncludeResources:tooltip"
            String: "If you want the system to track ONLY specific types of resources, type them separated by a ; here. Eg. \"Gems;Money\" Leave empty to track EVERY resources!"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "EasyNotifications"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14186374249476052630
        Name: "EasyNotifications_README"
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
        ParentId: 7031400351631019462
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 4320465280836377160
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9846418137462452415
        Name: "ClientContext"
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
        ParentId: 7031400351631019462
        ChildIds: 12410433781482350732
        ChildIds: 6409480875776254885
        ChildIds: 10993853130874707347
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
          IsAllowedForPC: true
          IsAllowedForMobile: true
          IsAllowedForLowMemoryMobile: true
          PCMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          PCMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
          MobileMinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MobileMaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12410433781482350732
        Name: "NotificationsManagerClient"
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
        ParentId: 9846418137462452415
        UnregisteredParameters {
          Overrides {
            Name: "cs:TemplatesFolder"
            ObjectReference {
              SubObjectId: 6409480875776254885
            }
          }
          Overrides {
            Name: "cs:NotificationsPanel"
            ObjectReference {
              SubObjectId: 5474874017057760175
            }
          }
          Overrides {
            Name: "cs:SharedNotifications"
            ObjectReference {
              SubObjectId: 7733334020543577535
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 8730002649903559269
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6409480875776254885
        Name: "TEMPLATES"
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
        ParentId: 9846418137462452415
        ChildIds: 15471278983631836379
        ChildIds: 12333246727253172040
        ChildIds: 14324705678643185477
        ChildIds: 10558147899256332940
        ChildIds: 11998921290717728476
        ChildIds: 13598242222416878119
        ChildIds: 12990516845731037698
        ChildIds: 15717753801781801130
        ChildIds: 1376965396893214857
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 15471278983631836379
        Name: "DEFAULT"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 6226892719819543533
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.0343398117
              G: 0.313988745
              B: 0.70837605
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 11692582672915131852
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 3
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 12333246727253172040
        Name: "WARNING"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 16950843466700973305
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.527115345
              G: 0.0409152
              B: 0.024157634
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 11692582672915131852
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 14324705678643185477
        Name: "SUCCESS"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 11804533195010143924
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.0273208916
              G: 0.603827536
              B: 0.165132225
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 15328668373582278696
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 10558147899256332940
        Name: "PLAYER_JOINED"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 10804711124856425053
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.0273208916
              G: 0.603827536
              B: 0.165132225
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 17865865097572445452
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 11998921290717728476
        Name: "PLAYER_LEFT"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 6267021833887234515
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.0273208916
              G: 0.603827536
              B: 0.165132225
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 6465397238487229125
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 13598242222416878119
        Name: "RESOURCE"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 5142318669842523011
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.879622579
              G: 0.552011609
              B: 0.00477695325
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 13721266342495487830
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 12990516845731037698
        Name: "ROUND_STARTS"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 8936651023717866437
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.0343398117
              G: 0.313988745
              B: 0.70837605
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 10377021842708945939
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 15717753801781801130
        Name: "ROUND_ENDS"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 643546312685992553
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              R: 0.799102962
              G: 0.0722718462
              B: 0.045186203
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 16991044857358420327
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 1376965396893214857
        Name: "DEATH"
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
        ParentId: 6409480875776254885
        UnregisteredParameters {
          Overrides {
            Name: "cs:Icon"
            AssetReference {
              Id: 6569039931229327508
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:PrimaryColor"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleColor"
            Color {
              R: 0.0251868609
              G: 0.0481718332
              B: 0.0802198276
              A: 1
            }
          }
          Overrides {
            Name: "cs:TitleFont"
            AssetReference {
              Id: 1636672685382557684
            }
          }
          Overrides {
            Name: "cs:BodyColor"
            Color {
              R: 0.0343398117
              G: 0.0666259378
              B: 0.111932434
              A: 1
            }
          }
          Overrides {
            Name: "cs:BodyFont"
            AssetReference {
              Id: 2378177681022470276
            }
          }
          Overrides {
            Name: "cs:PlaySound"
            Bool: true
          }
          Overrides {
            Name: "cs:Sound"
            AssetReference {
              Id: 2799393818330851745
            }
          }
          Overrides {
            Name: "cs:Duration"
            Int: 5
          }
          Overrides {
            Name: "cs:Icon:tooltip"
            String: "The icon shown on the notification"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "The notification background color"
          }
          Overrides {
            Name: "cs:TitleColor:tooltip"
            String: "The color of the Title text"
          }
          Overrides {
            Name: "cs:BodyColor:tooltip"
            String: "The color of the Body text"
          }
          Overrides {
            Name: "cs:PlaySound:tooltip"
            String: "Whether the notification should play a sound when it appears"
          }
          Overrides {
            Name: "cs:Sound:tooltip"
            String: "What sound should the notification plays when it appears"
          }
          Overrides {
            Name: "cs:Duration:tooltip"
            String: "How much time should the notification be shown on screen"
          }
          Overrides {
            Name: "cs:PrimaryColor:tooltip"
            String: "Defines the icon and border\' colors"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
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
        Id: 10993853130874707347
        Name: "UIClient"
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
        ParentId: 9846418137462452415
        ChildIds: 5474874017057760175
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            ContentType {
              Value: "mc:ecanvascontenttype:dynamic"
            }
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            TwoSided: true
            TickWhenOffScreen: true
            RedrawTime: 30
            UseSafeZoneAdjustment: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5474874017057760175
        Name: "NotificationsPanel"
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
        ParentId: 10993853130874707347
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 450
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentHeight: true
          Panel {
            IsClipping: true
            Opacity: 1
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14319939489804971962
        Name: "NotificationsManagerServer"
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
        ParentId: 7031400351631019462
        UnregisteredParameters {
          Overrides {
            Name: "cs:EasyNotifications"
            AssetReference {
              Id: 8891640115053969326
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 9995428066199645477
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7733334020543577535
        Name: "SharedNotifications"
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
        ParentId: 7031400351631019462
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 6226892719819543533
      Name: "Icon Intelligence"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Intelligence"
      }
    }
    Assets {
      Id: 1636672685382557684
      Name: "Cabin Bold"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "CabinBold_ref"
      }
    }
    Assets {
      Id: 2378177681022470276
      Name: "Cabin"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "CabinRegular_ref"
      }
    }
    Assets {
      Id: 11692582672915131852
      Name: "UI Pop Single 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_pop_single_01_Cue_ref"
      }
    }
    Assets {
      Id: 16950843466700973305
      Name: "Icon Alert"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Alert"
      }
    }
    Assets {
      Id: 11804533195010143924
      Name: "Icon Checkmark"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Checkmark"
      }
    }
    Assets {
      Id: 15328668373582278696
      Name: "Win Positive Coins 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_win_coins_01_Cue_ref"
      }
    }
    Assets {
      Id: 10804711124856425053
      Name: "Icon Player Mount"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_PlayerMount"
      }
    }
    Assets {
      Id: 17865865097572445452
      Name: "Coins Technologic 03 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_coins_technologic_03_Cue_ref"
      }
    }
    Assets {
      Id: 6267021833887234515
      Name: "Icon Hand"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Hand"
      }
    }
    Assets {
      Id: 6465397238487229125
      Name: "UI Tonal Locked Error Denied 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_tonal_locked_error_denied_01_Cue_ref"
      }
    }
    Assets {
      Id: 5142318669842523011
      Name: "Coin Purse"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_CoinPurse"
      }
    }
    Assets {
      Id: 13721266342495487830
      Name: "Collect Coin Star Ping 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_collect_coin_star_ping_02_Cue_ref"
      }
    }
    Assets {
      Id: 8936651023717866437
      Name: "Flag"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Racing_Icon_001"
      }
    }
    Assets {
      Id: 10377021842708945939
      Name: "Sports Referee Whistle Short 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sports_referee_whistle_short_01_Cue_ref"
      }
    }
    Assets {
      Id: 643546312685992553
      Name: "Checkered Flag"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Racing_Icon_002"
      }
    }
    Assets {
      Id: 16991044857358420327
      Name: "Sports Referee Whistle Long 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sports_referee_whistle_long_01_Cue_ref"
      }
    }
    Assets {
      Id: 6569039931229327508
      Name: "Death"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Icon_Death"
      }
    }
    Assets {
      Id: 2799393818330851745
      Name: "Male Generic Pain Groan 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_male_generic_pain_groan_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "This framework allows you to create and show beautiful ingame notifications that are entirely customizable in the easiest way.\r\nIt comes with premade notifications for basic Core features that can be enabled by beginners who don\'t know how to code or for a quick setup. \r\n\r\nSimply drag and drop this template into hierarchy and open the ReadMe file to get started!\r\n\r\nUpdates:\r\n\r\n06/29/2021 - v1.1\r\n- Added demo templates\r\n- You can now exclude/include specific resources from the tracking system\r\n\r\n06/28/2021 - v1.0\r\nInitial Release"
  }
  SerializationVersion: 125
  DirectlyPublished: true
}
