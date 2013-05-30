require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe NewsController do

  # This should return the minimal set of attributes required to create a valid
  # New. As you add validations to New, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all news as @news" do
      new = New.create! valid_attributes
      get :index
      assigns(:news).should eq([new])
    end
  end

  describe "GET show" do
    it "assigns the requested new as @new" do
      new = New.create! valid_attributes
      get :show, :id => new.id.to_s
      assigns(:new).should eq(new)
    end
  end

  describe "GET new" do
    it "assigns a new new as @new" do
      get :new
      assigns(:new).should be_a_new(New)
    end
  end

  describe "GET edit" do
    it "assigns the requested new as @new" do
      new = New.create! valid_attributes
      get :edit, :id => new.id.to_s
      assigns(:new).should eq(new)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new New" do
        expect {
          post :create, :new => valid_attributes
        }.to change(New, :count).by(1)
      end

      it "assigns a newly created new as @new" do
        post :create, :new => valid_attributes
        assigns(:new).should be_a(New)
        assigns(:new).should be_persisted
      end

      it "redirects to the created new" do
        post :create, :new => valid_attributes
        response.should redirect_to(New.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved new as @new" do
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        post :create, :new => {}
        assigns(:new).should be_a_new(New)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        post :create, :new => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested new" do
        new = New.create! valid_attributes
        # Assuming there are no other news in the database, this
        # specifies that the New created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        New.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => new.id, :new => {'these' => 'params'}
      end

      it "assigns the requested new as @new" do
        new = New.create! valid_attributes
        put :update, :id => new.id, :new => valid_attributes
        assigns(:new).should eq(new)
      end

      it "redirects to the new" do
        new = New.create! valid_attributes
        put :update, :id => new.id, :new => valid_attributes
        response.should redirect_to(new)
      end
    end

    describe "with invalid params" do
      it "assigns the new as @new" do
        new = New.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        put :update, :id => new.id.to_s, :new => {}
        assigns(:new).should eq(new)
      end

      it "re-renders the 'edit' template" do
        new = New.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        New.any_instance.stub(:save).and_return(false)
        put :update, :id => new.id.to_s, :new => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested new" do
      new = New.create! valid_attributes
      expect {
        delete :destroy, :id => new.id.to_s
      }.to change(New, :count).by(-1)
    end

    it "redirects to the news list" do
      new = New.create! valid_attributes
      delete :destroy, :id => new.id.to_s
      response.should redirect_to(news_url)
    end
  end

end