package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LagWarningReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_977:int;
      
      public function LagWarningReportMessageComposer(param1:int)
      {
         super();
         this.var_977 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_977];
      }
      
      public function dispose() : void
      {
      }
   }
}
