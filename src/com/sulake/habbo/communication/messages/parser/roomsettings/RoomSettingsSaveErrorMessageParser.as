package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1621:int = 1;
      
      public static const const_1693:int = 2;
      
      public static const const_1609:int = 3;
      
      public static const const_1766:int = 4;
      
      public static const const_1287:int = 5;
      
      public static const const_1614:int = 6;
      
      public static const const_1351:int = 7;
      
      public static const const_1297:int = 8;
      
      public static const const_1739:int = 9;
      
      public static const const_1448:int = 10;
      
      public static const const_1254:int = 11;
      
      public static const const_1457:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1415:int;
      
      private var var_2535:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1415 = param1.readInteger();
         this.var_2535 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1415;
      }
      
      public function get info() : String
      {
         return this.var_2535;
      }
   }
}
