package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_730:String = "RWCUE_EVENT_CHAT";
      
      public static const const_120:int = 0;
      
      public static const const_134:int = 1;
      
      public static const const_107:int = 2;
      
      public static const const_305:int = 3;
      
      public static const const_259:int = 4;
       
      
      private var _userId:int = 0;
      
      private var _text:String = "";
      
      private var var_1317:int = 0;
      
      private var _userName:String;
      
      private var var_1307:Array;
      
      private var var_2222:Number;
      
      private var var_2223:Number;
      
      private var var_2224:BitmapData;
      
      private var var_2225:uint;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_2226:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Array = null, param14:Boolean = false, param15:Boolean = false)
      {
         super(param1,param14,param15);
         this._userId = param2;
         this._text = param3;
         this.var_1317 = param12;
         this._userName = param4;
         this.var_2226 = param5;
         this.var_1307 = param13;
         this.var_2222 = param6;
         this.var_2223 = param7;
         this.var_2224 = param8;
         this.var_2225 = param9;
         this._roomId = param10;
         this._roomCategory = param11;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get chatType() : int
      {
         return this.var_1317;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get userCategory() : int
      {
         return this.var_2226;
      }
      
      public function get links() : Array
      {
         return this.var_1307;
      }
      
      public function get userX() : Number
      {
         return this.var_2222;
      }
      
      public function get userY() : Number
      {
         return this.var_2223;
      }
      
      public function get userImage() : BitmapData
      {
         return this.var_2224;
      }
      
      public function get userColor() : uint
      {
         return this.var_2225;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
   }
}
