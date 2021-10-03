package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1319:IID;
      
      private var var_1679:String;
      
      private var var_113:IUnknown;
      
      private var var_700:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1319 = param1;
         this.var_1679 = getQualifiedClassName(this.var_1319);
         this.var_113 = param2;
         this.var_700 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1319;
      }
      
      public function get iis() : String
      {
         return this.var_1679;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_113;
      }
      
      public function get references() : uint
      {
         return this.var_700;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_113 == null;
      }
      
      public function dispose() : void
      {
         this.var_1319 = null;
         this.var_1679 = null;
         this.var_113 = null;
         this.var_700 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_700;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_700) : uint(0);
      }
   }
}
