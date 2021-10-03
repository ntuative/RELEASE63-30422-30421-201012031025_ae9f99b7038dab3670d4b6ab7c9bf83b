package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_645:String = "";
      
      public static const const_476:int = 0;
      
      public static const const_455:int = 255;
      
      public static const const_574:Boolean = false;
      
      public static const const_413:int = 0;
      
      public static const const_470:int = 0;
      
      public static const const_419:int = 0;
      
      public static const const_1027:int = 1;
      
      public static const const_977:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1952:String = "";
      
      private var var_1664:int = 0;
      
      private var var_1953:int = 255;
      
      private var var_1983:Boolean = false;
      
      private var var_1981:int = 0;
      
      private var var_1980:int = 0;
      
      private var var_1982:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1952 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1952;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1664 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1664;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1953 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1953;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_1983 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_1983;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_1981 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_1981;
      }
      
      public function set method_2(param1:int) : void
      {
         this.var_1980 = param1;
      }
      
      public function get method_2() : int
      {
         return this.var_1980;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_1982 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_1982;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.method_2 = param1.method_2;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
