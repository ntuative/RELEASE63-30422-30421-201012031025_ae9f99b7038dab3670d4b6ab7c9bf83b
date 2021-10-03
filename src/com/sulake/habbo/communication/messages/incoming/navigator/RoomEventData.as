package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1003:Boolean;
      
      private var var_2300:int;
      
      private var var_2301:String;
      
      private var var_322:int;
      
      private var var_2297:int;
      
      private var var_2298:String;
      
      private var var_2299:String;
      
      private var var_2296:String;
      
      private var var_754:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_754 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1003 = false;
            return;
         }
         this.var_1003 = true;
         this.var_2300 = int(_loc2_);
         this.var_2301 = param1.readString();
         this.var_322 = int(param1.readString());
         this.var_2297 = param1.readInteger();
         this.var_2298 = param1.readString();
         this.var_2299 = param1.readString();
         this.var_2296 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_754.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_754 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2300;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2301;
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get eventType() : int
      {
         return this.var_2297;
      }
      
      public function get eventName() : String
      {
         return this.var_2298;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2299;
      }
      
      public function get creationTime() : String
      {
         return this.var_2296;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1003;
      }
   }
}
