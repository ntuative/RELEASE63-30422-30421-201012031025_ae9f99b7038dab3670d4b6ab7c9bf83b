package com.sulake.habbo.communication.messages.outgoing.help
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SendRegistrationDataComposer implements IMessageComposer
   {
       
      
      private var var_870:Array;
      
      public function SendRegistrationDataComposer(param1:String, param2:String, param3:Boolean)
      {
         this.var_870 = [];
         super();
         this.var_870.push(param1);
         this.var_870.push(param2);
         this.var_870.push(param3);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_870;
      }
      
      public function dispose() : void
      {
         this.var_870 = null;
      }
   }
}
