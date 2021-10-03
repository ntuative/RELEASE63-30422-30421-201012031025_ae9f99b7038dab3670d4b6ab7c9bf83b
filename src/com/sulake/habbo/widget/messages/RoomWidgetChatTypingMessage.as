package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_710:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_909:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_710);
         this.var_909 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_909;
      }
   }
}
