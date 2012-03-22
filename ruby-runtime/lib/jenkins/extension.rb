module Jenkins
  #
  # Defines the equivalent of `hudson.Extension`
  #
  module Extension
    extend Plugin::Behavior

    module ClassMethods
      #
      # Set the relative order of your extension among others.
      # Ordinals are in the descending order, so the bigger the value, the closer you get to the head of the list.
      #
      # class MyRootAction extends RootAction
      #   ordinal 3

      #   ...
      # end
      def ordinal(n=nil)
        if n.nil?
          @ordinal || 0
        else
          @ordinal = n
        end
      end
    end
  end


end