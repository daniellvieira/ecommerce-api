module FilesTestHelper
  extend self
  extend ActionDispatch::TestProcess

  def product
    upload('images', 'product_image.png')
  end

  private

  def upload(dir, name)
    file_path = Rails.root.join('spec', 'support', 'assets', dir, name)
    fixture_file_upload(file_path, type)
  end
end
