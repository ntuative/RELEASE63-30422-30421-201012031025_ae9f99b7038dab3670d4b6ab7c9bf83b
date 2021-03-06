package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_322:int;
      
      private var var_629:Boolean;
      
      private var var_841:String;
      
      private var _ownerName:String;
      
      private var var_1913:int;
      
      private var var_1916:int;
      
      private var var_1914:int;
      
      private var var_1444:String;
      
      private var var_1917:int;
      
      private var var_1912:Boolean;
      
      private var var_449:int;
      
      private var var_1282:int;
      
      private var var_1911:String;
      
      private var var_754:Array;
      
      private var var_1910:RoomThumbnailData;
      
      private var var_1915:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_754 = new Array();
         super();
         this.var_322 = param1.readInteger();
         this.var_629 = param1.readBoolean();
         this.var_841 = param1.readString();
         this._ownerName = param1.readString();
         this.var_1913 = param1.readInteger();
         this.var_1916 = param1.readInteger();
         this.var_1914 = param1.readInteger();
         this.var_1444 = param1.readString();
         this.var_1917 = param1.readInteger();
         this.var_1912 = param1.readBoolean();
         this.var_449 = param1.readInteger();
         this.var_1282 = param1.readInteger();
         this.var_1911 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_754.push(_loc4_);
            _loc3_++;
         }
         this.var_1910 = new RoomThumbnailData(param1);
         this.var_1915 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get event() : Boolean
      {
         return this.var_629;
      }
      
      public function get roomName() : String
      {
         return this.var_841;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_1913;
      }
      
      public function get userCount() : int
      {
         return this.var_1916;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_1914;
      }
      
      public function get description() : String
      {
         return this.var_1444;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_1917;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_1912;
      }
      
      public function get score() : int
      {
         return this.var_449;
      }
      
      public function get categoryId() : int
      {
         return this.var_1282;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_1911;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_1910;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1915;
      }
   }
}
