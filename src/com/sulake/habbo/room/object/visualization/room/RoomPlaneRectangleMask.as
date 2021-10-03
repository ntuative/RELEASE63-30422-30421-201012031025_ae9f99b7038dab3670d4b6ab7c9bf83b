package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2057:Number = 0.0;
      
      private var var_2058:Number = 0.0;
      
      private var var_2059:Number = 0.0;
      
      private var var_2056:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2057 = param1;
         this.var_2058 = param2;
         this.var_2059 = param3;
         this.var_2056 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2057;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2058;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2059;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2056;
      }
   }
}
