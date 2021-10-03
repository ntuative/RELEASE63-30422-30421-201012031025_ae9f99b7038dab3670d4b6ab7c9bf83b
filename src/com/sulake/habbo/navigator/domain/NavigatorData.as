package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1545:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_182:MsgWithRequestId;
      
      private var var_575:RoomEventData;
      
      private var var_2270:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_1891:int;
      
      private var var_231:GuestRoomData;
      
      private var var_835:PublicRoomShortData;
      
      private var var_2272:int;
      
      private var var_2266:Boolean;
      
      private var var_2265:int;
      
      private var var_2267:Boolean;
      
      private var var_1624:int;
      
      private var var_2273:Boolean;
      
      private var var_1185:Array;
      
      private var var_1284:Array;
      
      private var var_2269:int;
      
      private var var_1283:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1032:Boolean;
      
      private var var_2271:int;
      
      private var var_2268:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1185 = new Array();
         this.var_1284 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_231 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_231 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_835 = null;
         this.var_231 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_835 = param1.publicSpace;
            this.var_575 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_575 != null)
         {
            this.var_575.dispose();
            this.var_575 = null;
         }
         if(this.var_835 != null)
         {
            this.var_835.dispose();
            this.var_835 = null;
         }
         if(this.var_231 != null)
         {
            this.var_231.dispose();
            this.var_231 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_231 != null)
         {
            this.var_231.dispose();
         }
         this.var_231 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_575 != null)
         {
            this.var_575.dispose();
         }
         this.var_575 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_182 != null && this.var_182 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_182 != null && this.var_182 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_182 != null && this.var_182 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_182 = param1;
         this.var_1032 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_182 = param1;
         this.var_1032 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_182 = param1;
         this.var_1032 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_182 == null)
         {
            return;
         }
         this.var_182.dispose();
         this.var_182 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_182 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_182 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_182 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_575;
      }
      
      public function get avatarId() : int
      {
         return this.var_1891;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2270;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_231;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_835;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2266;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2265;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1624;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2267;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2271;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2272;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2273;
      }
      
      public function get adIndex() : int
      {
         return this.var_2268;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_1891 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2265 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2266 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2270 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2267 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1624 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2272 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2273 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2268 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1185 = param1;
         this.var_1284 = new Array();
         for each(_loc2_ in this.var_1185)
         {
            if(_loc2_.visible)
            {
               this.var_1284.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1185;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1284;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2269 = param1.limit;
         this.var_1283 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1283 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_231.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_231 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_231.flatId;
         return this.var_1624 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1283 >= this.var_2269;
      }
      
      public function startLoading() : void
      {
         this.var_1032 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1032;
      }
   }
}
