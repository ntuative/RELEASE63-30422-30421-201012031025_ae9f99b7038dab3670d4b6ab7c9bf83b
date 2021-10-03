package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_1106:String = "AssetLoaderEventProgress";
      
      public static const const_883:String = "AssetLoaderEventUnload";
      
      public static const const_1054:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1068:String = "AssetLoaderEventOpen";
       
      
      private var var_349:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_349 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_349;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_349);
      }
   }
}
