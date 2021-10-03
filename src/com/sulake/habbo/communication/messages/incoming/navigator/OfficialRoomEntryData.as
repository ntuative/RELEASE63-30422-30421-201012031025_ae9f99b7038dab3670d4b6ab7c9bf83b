package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_992:int = 1;
      
      public static const const_739:int = 2;
      
      public static const const_705:int = 3;
      
      public static const const_1363:int = 4;
       
      
      private var _index:int;
      
      private var var_2279:String;
      
      private var var_2277:String;
      
      private var var_2278:Boolean;
      
      private var var_2276:String;
      
      private var var_777:String;
      
      private var var_2275:int;
      
      private var var_1916:int;
      
      private var _type:int;
      
      private var var_1952:String;
      
      private var var_836:GuestRoomData;
      
      private var var_837:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2279 = param1.readString();
         this.var_2277 = param1.readString();
         this.var_2278 = param1.readInteger() == 1;
         this.var_2276 = param1.readString();
         this.var_777 = param1.readString();
         this.var_2275 = param1.readInteger();
         this.var_1916 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_992)
         {
            this.var_1952 = param1.readString();
         }
         else if(this._type == const_705)
         {
            this.var_837 = new PublicRoomData(param1);
         }
         else if(this._type == const_739)
         {
            this.var_836 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_836 != null)
         {
            this.var_836.dispose();
            this.var_836 = null;
         }
         if(this.var_837 != null)
         {
            this.var_837.dispose();
            this.var_837 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2279;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2277;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2278;
      }
      
      public function get picText() : String
      {
         return this.var_2276;
      }
      
      public function get picRef() : String
      {
         return this.var_777;
      }
      
      public function get folderId() : int
      {
         return this.var_2275;
      }
      
      public function get tag() : String
      {
         return this.var_1952;
      }
      
      public function get userCount() : int
      {
         return this.var_1916;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_836;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_837;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_992)
         {
            return 0;
         }
         if(this.type == const_739)
         {
            return this.var_836.maxUserCount;
         }
         if(this.type == const_705)
         {
            return this.var_837.maxUsers;
         }
         return 0;
      }
   }
}
