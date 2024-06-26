SolidQueueInterface::Engine.routes.draw do
  resources :jobs, only: [:index, :show], as: :solid_queue_interface_jobs do
    get :scheduled, on: :collection
    get :failed, on: :collection
    get :blocked, on: :collection
    get :claimed, on: :collection
    get :ready, on: :collection
    get :recurring, on: :collection
    post :retry, on: :member
  end

  resources :queues, only: :index, param: :queue_name, as: :solid_queue_interface_queues do
    get :paused, on: :collection
    post :pause, on: :member
    post :resume, on: :member
  end

  resources :semaphores, only: :index, as: :solid_queue_interface_semaphores

  resources :processes, only: :index, as: :solid_queue_interface_processes

  root to: "jobs#index"
end
