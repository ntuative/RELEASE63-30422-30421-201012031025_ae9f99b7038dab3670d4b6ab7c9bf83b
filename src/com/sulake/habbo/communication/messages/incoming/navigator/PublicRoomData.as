package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2041:String;
      
      private var var_1943:int;
      
      private var var_1932:int;
      
      private var var_2153:String;
      
      private var var_2154:int;
      
      private var var_1690:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2041 = param1.readString();
         this.var_1943 = param1.readInteger();
         this.var_1932 = param1.readInteger();
         this.var_2153 = param1.readString();
         this.var_2154 = param1.readInteger();
         this.var_1690 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2041;
      }
      
      public function get unitPort() : int
      {
         return this.var_1943;
      }
      
      public function get worldId() : int
      {
         return this.var_1932;
      }
      
      public function get castLibs() : String
      {
         return this.var_2153;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2154;
      }
      
      public function get nodeId() : int
      {
         return this.var_1690;
      }
   }
}
