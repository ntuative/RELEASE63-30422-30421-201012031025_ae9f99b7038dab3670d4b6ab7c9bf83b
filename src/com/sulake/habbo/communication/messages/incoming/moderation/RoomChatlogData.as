package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_1732:Boolean;
      
      private var _roomId:int;
      
      private var var_841:String;
      
      private var var_1733:Array;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         this.var_1733 = new Array();
         super();
         this.var_1732 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_841 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1733.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + this.var_1732 + ", " + this._roomId + ", " + this.var_841 + ", " + this.chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1732;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_841;
      }
      
      public function get chatlog() : Array
      {
         return this.var_1733;
      }
   }
}
