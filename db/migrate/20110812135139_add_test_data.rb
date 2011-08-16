class AddTestData < ActiveRecord::Migration
  def self.up
      Product.delete_all
      Product.create(:title => 'Pragmatic Version Control',
              :description =>
              %{<p>
                 This book is a recipe-based approach to using Subversion that will
                 get you up and running quickly---and correctly. All projects need
                 version control: its a foundational piece of any projects
                 infrastructure. Yet half of all project teams in the U.S. do not use
                 ant version control at all. Many others do not use it well, and end
                 up experiencing time-consuming problems.
                </p>},
              :image_url => '/images/svn.jpg',
              :price => 28.50)

     Product.create(:title => 'Pragmatic Unit Testing',
            :description =>
            %{<p>
              This book is another in the Pragmatic series. It describes what you
              should do and should not do in Unit Testing. It provides examples and
              scenarios and real life examples for you to get a feel of what Unit
              Testing is all about. If you are reading this then it means you are
              looking into what unit testing is. This is the right book for you.
              </p>},
             :image_url => '/images/utc.jpg',
             :price => 29.59)

     Product.create(:title => 'Pragmatic Project Automation',
            :description =>
            %{<p>
              What is Project Automation? This book is a comprehensive guide into
              the process of Project Automation. Another release in the Pragmatic series,
              this book provides pertinent examples and issues covering the process of
              Project Automation from start to finish.
              </p>},
            :image_url => '/images/auto.jpg',
            :price => 28.49)
  end

  def self.down
      Product.delete_all
  end
end
