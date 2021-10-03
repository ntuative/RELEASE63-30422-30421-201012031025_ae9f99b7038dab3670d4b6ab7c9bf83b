package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_783:RoomObjectLocationCacheItem = null;
      
      private var var_183:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_783 = new RoomObjectLocationCacheItem(param1);
         this.var_183 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_783;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_183;
      }
      
      public function dispose() : void
      {
         if(this.var_783 != null)
         {
            this.var_783.dispose();
            this.var_783 = null;
         }
         if(this.var_183 != null)
         {
            this.var_183.dispose();
            this.var_183 = null;
         }
      }
   }
}
