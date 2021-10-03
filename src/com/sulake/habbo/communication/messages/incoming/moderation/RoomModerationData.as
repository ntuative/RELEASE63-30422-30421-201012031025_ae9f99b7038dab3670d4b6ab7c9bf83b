package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_322:int;
      
      private var var_1916:int;
      
      private var var_2244:Boolean;
      
      private var var_1882:int;
      
      private var _ownerName:String;
      
      private var var_103:RoomData;
      
      private var var_629:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_322 = param1.readInteger();
         this.var_1916 = param1.readInteger();
         this.var_2244 = param1.readBoolean();
         this.var_1882 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_103 = new RoomData(param1);
         this.var_629 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_103 != null)
         {
            this.var_103.dispose();
            this.var_103 = null;
         }
         if(this.var_629 != null)
         {
            this.var_629.dispose();
            this.var_629 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get userCount() : int
      {
         return this.var_1916;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2244;
      }
      
      public function get ownerId() : int
      {
         return this.var_1882;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_103;
      }
      
      public function get event() : RoomData
      {
         return this.var_629;
      }
   }
}
