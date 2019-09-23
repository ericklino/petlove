RailsAdmin.config do |config|
  config.main_app_name = ["Pertlove - Área Administrativa"]
  config.default_items_per_page = 20
  config.compact_show_view = false

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true


  ### Animal ###
  config.model 'Animal' do
    navigation_label 'Animais'

    list do
      field :id
      field :name
      field :type_animal
      field :monthly
      field :people
    end
    edit do
      field :name
      field :type_animal do
        inline_add false
        inline_edit false
      end
      field :monthly
      field :people do
        inline_add false
        inline_edit false
      end
    end
  end

  ### Person ###
  config.model 'People' do
    navigation_label 'Pessoas'

    list do
      field :id
      field :name
      field :document
      field :date_born
    end
    edit do
      field :name
      field :document
      field :date_born
    end
  end

  ### Type Animal ###
  config.model 'TypeAnimal' do
    navigation_label 'Animais'

    list do
      field :id
      field :name
    end
    edit do
      field :name
    end
  end

  ###  User  ###
  config.model 'User' do
    navigation_label 'Usuários'

    list do
      field :id
      field :email
      field :updated_at
    end
    edit do
      field :email
      field :password
      field :password_confirmation
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    bulk_delete
    new
    edit
    delete


    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
