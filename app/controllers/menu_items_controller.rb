class MenuItemsController < ApplicationController

  expose(:menu_item)
  # menu_items defined in ApplicationController so available to all pages

  # POST /menu_items
  # POST /menu_items.json
  def create
    respond_to do |format|
      if menu_item.save
        format.html { redirect_to menu_item, notice: 'Menu item was successfully created.' }
        format.json { render json: menu_item, status: :created, location: menu_item }
      else
        format.html { render action: "new" }
        format.json { render json: menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menu_items/1
  # PUT /menu_items/1.json
  def update
    respond_to do |format|
      if menu_item.save
        format.html { redirect_to menu_item, notice: 'Menu item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_items/1
  # DELETE /menu_items/1.json
  def destroy
    menu_item.destroy

    respond_to do |format|
      format.html { redirect_to menu_items_url }
      format.json { head :ok }
    end
  end
end
