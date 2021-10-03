package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_560:String;
      
      private var var_1966:String;
      
      private var var_813:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_560 = param1;
         this.var_813 = param2;
         this.var_1966 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function get race() : String
      {
         return this.var_1966;
      }
      
      public function get gender() : String
      {
         return this.var_813;
      }
   }
}
