package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_922:String;
      
      protected var var_157:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_752:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_752 = param1;
         this.var_922 = param2;
      }
      
      public function get url() : String
      {
         return this.var_922;
      }
      
      public function get content() : Object
      {
         return this.var_157;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_752;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_157.loaderInfo != null)
            {
               if(this.var_157.loaderInfo.loader != null)
               {
                  this.var_157.loaderInfo.loader.unload();
               }
            }
            this.var_157 = null;
            this.var_752 = null;
            this._disposed = true;
            this.var_922 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_157 = param1 as DisplayObject;
            if(this.var_157 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_157 = DisplayAsset(param1).var_157;
            this.var_752 = DisplayAsset(param1).var_752;
            if(this.var_157 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_157 = DisplayAsset(param1).var_157;
            this.var_752 = DisplayAsset(param1).var_752;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
