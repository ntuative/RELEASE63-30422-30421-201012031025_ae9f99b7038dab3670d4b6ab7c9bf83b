package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_779:IAssetLoader;
      
      private var var_1623:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1623 = param1;
         this.var_779 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1623;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_779;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_779 != null)
            {
               if(!this.var_779.disposed)
               {
                  this.var_779.dispose();
                  this.var_779 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
