package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_703:TileHeightMap = null;
      
      private var var_1085:LegacyWallGeometry = null;
      
      private var var_1086:RoomCamera = null;
      
      private var var_702:SelectedRoomObjectData = null;
      
      private var var_704:SelectedRoomObjectData = null;
      
      private var var_2381:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1085 = new LegacyWallGeometry();
         this.var_1086 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_703;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_703 != null)
         {
            this.var_703.dispose();
         }
         this.var_703 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1085;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1086;
      }
      
      public function get worldType() : String
      {
         return this.var_2381;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2381 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_702;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_702 != null)
         {
            this.var_702.dispose();
         }
         this.var_702 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_704;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_704 != null)
         {
            this.var_704.dispose();
         }
         this.var_704 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_703 != null)
         {
            this.var_703.dispose();
            this.var_703 = null;
         }
         if(this.var_1085 != null)
         {
            this.var_1085.dispose();
            this.var_1085 = null;
         }
         if(this.var_1086 != null)
         {
            this.var_1086.dispose();
            this.var_1086 = null;
         }
         if(this.var_702 != null)
         {
            this.var_702.dispose();
            this.var_702 = null;
         }
         if(this.var_704 != null)
         {
            this.var_704.dispose();
            this.var_704 = null;
         }
      }
   }
}
