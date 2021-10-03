package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_115:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_267:String;
      
      private var var_39:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_115,param3,param4);
         this.var_267 = param1;
         this.var_39 = param2;
      }
      
      public function get badgeId() : String
      {
         return this.var_267;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_39;
      }
   }
}
