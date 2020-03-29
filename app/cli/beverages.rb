class CLI
  class Beverages
    include VendingMachineUsable

    def call
      column_names = [:price, :name, :count]
      puts format(column_names, vending_machine.beverages)
    end

    private

    def format(column_names, beverages)
      column_widths = column_widths(column_names, beverages)
      partition = partition(column_widths)

      rows = [
        partition,
        header(column_names, column_widths),
        partition,
        body(column_names, beverages, column_widths),
        partition
      ]
      rows.join("\n")
    end

    def column_widths(column_names, beverages)
      column_names.map do |column_name|
        lengths = beverages.map { |beverage| beverage.public_send(column_name).to_s.length }
        max_length = [column_name.length, *lengths].max
        width = max_length + 2
      end
    end

    def partition(column_widths)
      fields = column_widths.map { |width| "-" * width }
      concat(fields, "+")
    end

    def header(column_names, column_width)
      fields = column_names.zip(column_width).map { |name, width| " " + name.to_s.ljust(width - 1) }
      concat(fields, "|")
    end

    def body(column_names, beverages, column_widths)
      beverages.map do |beverage|
        fields = column_names.zip(column_widths).map { |name, width| " " + beverage.public_send(name).to_s.ljust(width - 1) }
        concat(fields, "|")
      end
    end

    def concat(fields, joint)
      fields.prepend("").push("").join(joint)
    end
  end
end
