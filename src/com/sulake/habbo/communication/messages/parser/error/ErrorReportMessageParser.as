package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1415:int;
      
      private var var_1550:int;
      
      private var var_1549:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1550 = param1.readInteger();
         this.var_1415 = param1.readInteger();
         this.var_1549 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1415 = 0;
         this.var_1550 = 0;
         this.var_1549 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1415;
      }
      
      public function get messageId() : int
      {
         return this.var_1550;
      }
      
      public function get timestamp() : String
      {
         return this.var_1549;
      }
   }
}
