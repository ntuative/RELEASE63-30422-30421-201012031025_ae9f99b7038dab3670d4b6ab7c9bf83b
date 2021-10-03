package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1552:int;
      
      private var var_2147:int;
      
      private var var_1248:int;
      
      private var var_1937:int;
      
      private var var_103:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1552 = param1.readInteger();
         this.var_2147 = param1.readInteger();
         this.var_1248 = param1.readInteger();
         this.var_1937 = param1.readInteger();
         this.var_103 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1552);
      }
      
      public function get callId() : int
      {
         return this.var_1552;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2147;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1248;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1937;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_103;
      }
   }
}
