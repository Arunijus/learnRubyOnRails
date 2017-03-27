require 'rake'
namespace :suppliers do
  task :show_list, [:minutes_before] => :environment do |task, args|
    time_before = Time.now - args.minutes_before.to_i.minutes

    Supplier.all.each do |supplier|
      if supplier.created_at < time_before
        puts supplier.name
      end
    end

  end

  task :show_items_list, [:minutes_before] => :environment do |task, args|
    time_before = Time.now - args.minutes_before.to_i.minutes

    Supplier.all.each do |supplier|
      puts supplier.name
      supplier.supplier_items.each do |item|
        if item.created_at < time_before
          puts "    #{item.ean} #{item.description} #{item.purchase_price} #{item.sales_price} #{item.vat}"
        end
      end
    end

  end
end
