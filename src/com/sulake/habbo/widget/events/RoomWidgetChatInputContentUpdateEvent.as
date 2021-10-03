package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_661:String = "RWWCIDE_CHAT_INPUT_CONTENT";
      
      public static const const_1101:String = "whisper";
      
      public static const const_1461:String = "shout";
       
      
      private var var_1919:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_661,param3,param4);
         this.var_1919 = param1;
         this._userName = param2;
      }
      
      public function get messageType() : String
      {
         return this.var_1919;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
