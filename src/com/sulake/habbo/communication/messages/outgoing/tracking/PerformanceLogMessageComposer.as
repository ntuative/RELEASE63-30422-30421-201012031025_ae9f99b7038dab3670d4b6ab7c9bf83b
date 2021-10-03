package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1892:int = 0;
      
      private var var_1180:String = "";
      
      private var var_1446:String = "";
      
      private var var_1906:String = "";
      
      private var var_1904:String = "";
      
      private var var_1423:int = 0;
      
      private var var_1903:int = 0;
      
      private var var_1905:int = 0;
      
      private var var_1181:int = 0;
      
      private var var_1907:int = 0;
      
      private var var_1182:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1892 = param1;
         this.var_1180 = param2;
         this.var_1446 = param3;
         this.var_1906 = param4;
         this.var_1904 = param5;
         if(param6)
         {
            this.var_1423 = 1;
         }
         else
         {
            this.var_1423 = 0;
         }
         this.var_1903 = param7;
         this.var_1905 = param8;
         this.var_1181 = param9;
         this.var_1907 = param10;
         this.var_1182 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1892,this.var_1180,this.var_1446,this.var_1906,this.var_1904,this.var_1423,this.var_1903,this.var_1905,this.var_1181,this.var_1907,this.var_1182];
      }
   }
}
