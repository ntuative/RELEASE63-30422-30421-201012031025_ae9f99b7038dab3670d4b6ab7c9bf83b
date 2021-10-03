package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1709:IID;
      
      private var var_657:Boolean;
      
      private var var_1091:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1709 = param1;
         this.var_1091 = new Array();
         this.var_657 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1709;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_657;
      }
      
      public function get receivers() : Array
      {
         return this.var_1091;
      }
      
      public function dispose() : void
      {
         if(!this.var_657)
         {
            this.var_657 = true;
            this.var_1709 = null;
            while(this.var_1091.length > 0)
            {
               this.var_1091.pop();
            }
            this.var_1091 = null;
         }
      }
   }
}
