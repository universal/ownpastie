require 'action_view/template_handlers/erb'
class Output::SimpleCorrectionDiff #:nodoc:
  include ERB::Util

  attr_accessor :content

  def initialize
    @content = ""
  end
    
  def change(event)
    out = Output::StringSimpleCorrectionDiff.new
    Diff::LCS.traverse_balanced(event.old_element, event.new_element, out)
    @content << %Q|<pre class="change">#{out.content}#{out.closing}</span></pre>\n|
  end

    # This will be called with both lines are the same
  def match(event)
    @content << %Q|<pre class="match">#{event.new_element}</pre>\n|
  end

    # This will be called when there is a line in A that isn't in B
  def discard_a(event)
    @content << %Q|<pre class="only_a"><del>#{event.old_element}</del></pre>\n|
  end

    # This will be called when there is a line in B that isn't in A
  def discard_b(event)
    @content << %Q|<pre class="only_b"><ins>#{event.new_element}</ins></pre>\n|
  end
end
