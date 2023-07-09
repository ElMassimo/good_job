# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `console` gem.
# Please instead update this file by running `bin/tapioca gem console`.

# source://console//lib/console/version.rb#6
module Console
  # source://console//lib/console.rb#25
  def logger; end

  # source://console//lib/console.rb#21
  def logger=(logger); end

  class << self
    # @private
    #
    # source://console//lib/console.rb#29
    def extended(klass); end

    # source://console//lib/console.rb#13
    def logger; end

    # source://console//lib/console.rb#17
    def logger=(instance); end
  end
end

# source://console//lib/console/buffer.rb#9
class Console::Buffer < ::StringIO
  # @return [Buffer] a new instance of Buffer
  #
  # source://console//lib/console/buffer.rb#10
  def initialize(prefix = T.unsafe(nil)); end

  # source://console//lib/console/buffer.rb#16
  def <<(*args, prefix: T.unsafe(nil)); end

  # source://console//lib/console/buffer.rb#16
  def puts(*args, prefix: T.unsafe(nil)); end
end

# source://console//lib/console/clock.rb#7
module Console::Clock
  class << self
    # source://console//lib/console/clock.rb#8
    def formatted_duration(duration); end

    # Get the current elapsed monotonic time.
    #
    # source://console//lib/console/clock.rb#31
    def now; end
  end
end

# source://console//lib/console/event/generic.rb#7
module Console::Event; end

# source://console//lib/console/event/failure.rb#11
class Console::Event::Failure < ::Console::Event::Generic
  # @return [Failure] a new instance of Failure
  #
  # source://console//lib/console/event/failure.rb#22
  def initialize(exception, root = T.unsafe(nil)); end

  # Returns the value of attribute exception.
  #
  # source://console//lib/console/event/failure.rb#27
  def exception; end

  # source://console//lib/console/event/failure.rb#42
  def format(output, terminal, verbose); end

  # source://console//lib/console/event/failure.rb#46
  def format_exception(exception, prefix, output, terminal, verbose); end

  # Returns the value of attribute root.
  #
  # source://console//lib/console/event/failure.rb#28
  def root; end

  # source://console//lib/console/event/failure.rb#38
  def to_h; end

  class << self
    # source://console//lib/console/event/failure.rb#12
    def current_working_directory; end

    # source://console//lib/console/event/failure.rb#18
    def for(exception); end

    # source://console//lib/console/event/failure.rb#30
    def register(terminal); end
  end
end

# source://console//lib/console/event/generic.rb#8
class Console::Event::Generic
  # source://console//lib/console/event/generic.rb#19
  def format(buffer, terminal); end

  # source://console//lib/console/event/generic.rb#12
  def to_h; end

  # source://console//lib/console/event/generic.rb#15
  def to_json(*arguments); end

  class << self
    # source://console//lib/console/event/generic.rb#9
    def register(terminal); end
  end
end

# source://console//lib/console/event/progress.rb#10
class Console::Event::Progress < ::Console::Event::Generic
  # @return [Progress] a new instance of Progress
  #
  # source://console//lib/console/event/progress.rb#23
  def initialize(current, total); end

  # source://console//lib/console/event/progress.rb#35
  def bar(value = T.unsafe(nil), width = T.unsafe(nil)); end

  # Returns the value of attribute current.
  #
  # source://console//lib/console/event/progress.rb#28
  def current; end

  # source://console//lib/console/event/progress.rb#55
  def format(output, terminal, verbose); end

  # source://console//lib/console/event/progress.rb#51
  def to_h; end

  # Returns the value of attribute total.
  #
  # source://console//lib/console/event/progress.rb#29
  def total; end

  # source://console//lib/console/event/progress.rb#31
  def value; end

  class << self
    # source://console//lib/console/event/progress.rb#47
    def register(terminal); end
  end
end

# source://console//lib/console/event/progress.rb#11
Console::Event::Progress::BLOCK = T.let(T.unsafe(nil), Array)

# source://console//lib/console/event/spawn.rb#10
class Console::Event::Spawn < ::Console::Event::Generic
  # @return [Spawn] a new instance of Spawn
  #
  # source://console//lib/console/event/spawn.rb#21
  def initialize(environment, arguments, options); end

  # Returns the value of attribute arguments.
  #
  # source://console//lib/console/event/spawn.rb#28
  def arguments; end

  # source://console//lib/console/event/spawn.rb#31
  def chdir_string(options); end

  # Returns the value of attribute environment.
  #
  # source://console//lib/console/event/spawn.rb#27
  def environment; end

  # source://console//lib/console/event/spawn.rb#49
  def format(output, terminal, verbose); end

  # Returns the value of attribute options.
  #
  # source://console//lib/console/event/spawn.rb#29
  def options; end

  # source://console//lib/console/event/spawn.rb#41
  def to_h; end

  class << self
    # source://console//lib/console/event/spawn.rb#11
    def for(*arguments, **options); end

    # source://console//lib/console/event/spawn.rb#37
    def register(terminal); end
  end
end

# source://console//lib/console/filter.rb#14
class Console::Filter
  # @return [Filter] a new instance of Filter
  #
  # source://console//lib/console/filter.rb#46
  def initialize(output, verbose: T.unsafe(nil), level: T.unsafe(nil), enabled: T.unsafe(nil), **options); end

  # source://console//lib/console/filter.rb#93
  def all!; end

  # source://console//lib/console/filter.rb#129
  def call(*arguments, **options, &block); end

  # Disable specific logging for the specific class.
  #
  # source://console//lib/console/filter.rb#121
  def disable(subject); end

  # Enable specific log level for the given class.
  #
  # source://console//lib/console/filter.rb#111
  def enable(subject, level = T.unsafe(nil)); end

  # You can enable and disable logging for classes. This function checks if logging for a given subject is enabled.
  #
  # @param subject [Object] the subject to check.
  # @return [Boolean]
  #
  # source://console//lib/console/filter.rb#99
  def enabled?(subject, level = T.unsafe(nil)); end

  # Returns the value of attribute level.
  #
  # source://console//lib/console/filter.rb#70
  def level; end

  # source://console//lib/console/filter.rb#76
  def level=(level); end

  # source://console//lib/console/filter.rb#89
  def off!; end

  # Returns the value of attribute options.
  #
  # source://console//lib/console/filter.rb#74
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://console//lib/console/filter.rb#74
  def options=(_arg0); end

  # Returns the value of attribute output.
  #
  # source://console//lib/console/filter.rb#68
  def output; end

  # Sets the attribute output
  #
  # @param value the value to set the attribute output to.
  #
  # source://console//lib/console/filter.rb#68
  def output=(_arg0); end

  # Returns the value of attribute subjects.
  #
  # source://console//lib/console/filter.rb#72
  def subjects; end

  # Returns the value of attribute verbose.
  #
  # source://console//lib/console/filter.rb#69
  def verbose; end

  # source://console//lib/console/filter.rb#84
  def verbose!(value = T.unsafe(nil)); end

  # source://console//lib/console/filter.rb#60
  def with(level: T.unsafe(nil), verbose: T.unsafe(nil), **options); end

  class << self
    # source://console//lib/console/filter.rb#15
    def [](**levels); end
  end
end

# source://console//lib/console/logger.rb#19
class Console::Logger < ::Console::Filter
  extend ::Fiber::Local

  # @return [Logger] a new instance of Logger
  #
  # source://console//lib/console/logger.rb#65
  def initialize(output, **options); end

  # @deprecated Use `fatal` instead.
  #
  # source://console//lib/console/logger.rb#74
  def failure(subject, exception, *arguments, &block); end

  # source://console//lib/console/logger.rb#69
  def progress(subject, total, **options); end

  class << self
    # Set the default log level based on `$DEBUG` and `$VERBOSE`.
    # You can also specify CONSOLE_LEVEL=debug or CONSOLE_LEVEL=info in environment.
    # https://mislav.net/2011/06/ruby-verbose-mode/ has more details about how it all fits together.
    #
    # source://console//lib/console/logger.rb#25
    def default_log_level(env = T.unsafe(nil)); end

    # source://console//lib/console/logger.rb#42
    def default_logger(output = T.unsafe(nil), env = T.unsafe(nil), **options); end

    # source://console//lib/console/logger.rb#59
    def local; end

    # Controls verbose output using `$VERBOSE`.
    #
    # @return [Boolean]
    #
    # source://console//lib/console/logger.rb#38
    def verbose?(env = T.unsafe(nil)); end
  end
end

# source://console//lib/console/logger.rb#63
Console::Logger::DEFAULT_LEVEL = T.let(T.unsafe(nil), Integer)

# source://console//lib/console/output/xterm.rb#9
module Console::Output
  class << self
    # source://console//lib/console/output.rb#13
    def new(output = T.unsafe(nil), env = T.unsafe(nil), **options); end
  end
end

# source://console//lib/console/output/default.rb#11
module Console::Output::Default
  class << self
    # source://console//lib/console/output/default.rb#12
    def new(output, **options); end
  end
end

# source://console//lib/console/output/json.rb#10
module Console::Output::JSON
  class << self
    # source://console//lib/console/output/json.rb#11
    def new(output, **options); end
  end
end

# source://console//lib/console/output/text.rb#10
module Console::Output::Text
  class << self
    # source://console//lib/console/output/text.rb#11
    def new(output, **options); end
  end
end

# source://console//lib/console/output/xterm.rb#10
module Console::Output::XTerm
  class << self
    # source://console//lib/console/output/xterm.rb#11
    def new(output, **options); end
  end
end

# source://console//lib/console/progress.rb#10
class Console::Progress
  # @return [Progress] a new instance of Progress
  #
  # source://console//lib/console/progress.rb#15
  def initialize(output, subject, total = T.unsafe(nil), minimum_output_duration: T.unsafe(nil)); end

  # source://console//lib/console/progress.rb#44
  def average_duration; end

  # Returns the value of attribute current.
  #
  # source://console//lib/console/progress.rb#29
  def current; end

  # source://console//lib/console/progress.rb#32
  def duration; end

  # source://console//lib/console/progress.rb#50
  def estimated_remaining_time; end

  # source://console//lib/console/progress.rb#56
  def increment(amount = T.unsafe(nil)); end

  # source://console//lib/console/progress.rb#76
  def mark(*_arg0, **_arg1, &_arg2); end

  # source://console//lib/console/progress.rb#36
  def ratio; end

  # source://console//lib/console/progress.rb#40
  def remaining; end

  # source://console//lib/console/progress.rb#67
  def resize(total); end

  # Returns the value of attribute subject.
  #
  # source://console//lib/console/progress.rb#28
  def subject; end

  # source://console//lib/console/progress.rb#80
  def to_s; end

  # Returns the value of attribute total.
  #
  # source://console//lib/console/progress.rb#30
  def total; end

  private

  # source://console//lib/console/progress.rb#90
  def duration_since_last_output; end

  # @return [Boolean]
  #
  # source://console//lib/console/progress.rb#96
  def output?; end

  class << self
    # source://console//lib/console/progress.rb#11
    def now; end
  end
end

# source://console//lib/console/resolver.rb#10
class Console::Resolver
  # @return [Resolver] a new instance of Resolver
  #
  # source://console//lib/console/resolver.rb#62
  def initialize; end

  # source://console//lib/console/resolver.rb#68
  def bind(names, &block); end

  # source://console//lib/console/resolver.rb#88
  def resolve(trace_point); end

  # @return [Boolean]
  #
  # source://console//lib/console/resolver.rb#84
  def waiting?; end

  class << self
    # You can change the log level for different classes using CONSOLE_$LEVEL env vars.
    #
    # e.g. `CONSOLE_WARN=Acorn,Banana CONSOLE_DEBUG=Cat` will set the log level for the classes Acorn and Banana to `warn` and Cat to `debug`. This overrides the default log level.
    #
    # You can enable all log levels for a given class by using `CONSOLE_ON=MyClass`. Similarly you can disable all logging using `CONSOLE_OFF=MyClass`.
    #
    # source://console//lib/console/resolver.rb#22
    def default_resolver(logger, env = T.unsafe(nil)); end
  end
end

# source://console//lib/console/serialized/logger.rb#15
module Console::Serialized; end

# source://console//lib/console/serialized/logger.rb#16
class Console::Serialized::Logger
  # @return [Logger] a new instance of Logger
  #
  # source://console//lib/console/serialized/logger.rb#17
  def initialize(io = T.unsafe(nil), format: T.unsafe(nil), verbose: T.unsafe(nil), **options); end

  # source://console//lib/console/serialized/logger.rb#36
  def call(subject = T.unsafe(nil), *arguments, severity: T.unsafe(nil), **options, &block); end

  # source://console//lib/console/serialized/logger.rb#32
  def dump(record); end

  # Returns the value of attribute format.
  #
  # source://console//lib/console/serialized/logger.rb#26
  def format; end

  # Returns the value of attribute io.
  #
  # source://console//lib/console/serialized/logger.rb#24
  def io; end

  # Returns the value of attribute start.
  #
  # source://console//lib/console/serialized/logger.rb#25
  def start; end

  # source://console//lib/console/serialized/logger.rb#28
  def verbose!(value = T.unsafe(nil)); end

  private

  # source://console//lib/console/serialized/logger.rb#86
  def find_exception(message); end

  # source://console//lib/console/serialized/logger.rb#96
  def format_backtrace(exception, buffer); end

  # source://console//lib/console/serialized/logger.rb#90
  def format_stack(exception); end
end

# Deprecated.
#
# source://console//lib/console/event/spawn.rb#64
Console::Shell = Console::Event::Spawn

# Styled terminal output.
#
# source://console//lib/console/terminal/text.rb#10
module Console::Terminal
  class << self
    # source://console//lib/console/terminal/logger.rb#37
    def for(io); end

    # Exports CONSOLE_START which can be used to synchronize the start times of all child processes when they log using delta time.
    #
    # source://console//lib/console/terminal/logger.rb#24
    def start_at!(environment = T.unsafe(nil)); end
  end
end

# This, and all related methods, is considered private.
#
# source://console//lib/console/terminal/logger.rb#21
Console::Terminal::CONSOLE_START_AT = T.let(T.unsafe(nil), String)

# source://console//lib/console/terminal/logger.rb#45
class Console::Terminal::Logger
  # @return [Logger] a new instance of Logger
  #
  # source://console//lib/console/terminal/logger.rb#46
  def initialize(io = T.unsafe(nil), verbose: T.unsafe(nil), start_at: T.unsafe(nil), format: T.unsafe(nil), **options); end

  # source://console//lib/console/terminal/logger.rb#92
  def call(subject = T.unsafe(nil), *arguments, name: T.unsafe(nil), severity: T.unsafe(nil), **options, &block); end

  # Returns the value of attribute io.
  #
  # source://console//lib/console/terminal/logger.rb#72
  def io; end

  # source://console//lib/console/terminal/logger.rb#83
  def register_defaults(terminal); end

  # Returns the value of attribute start.
  #
  # source://console//lib/console/terminal/logger.rb#76
  def start; end

  # Returns the value of attribute terminal.
  #
  # source://console//lib/console/terminal/logger.rb#77
  def terminal; end

  # Returns the value of attribute verbose.
  #
  # source://console//lib/console/terminal/logger.rb#74
  def verbose; end

  # source://console//lib/console/terminal/logger.rb#79
  def verbose!(value = T.unsafe(nil)); end

  # Sets the attribute verbose
  #
  # @param value the value to set the attribute verbose to.
  #
  # source://console//lib/console/terminal/logger.rb#74
  def verbose=(_arg0); end

  protected

  # source://console//lib/console/terminal/logger.rb#204
  def build_prefix(name); end

  # source://console//lib/console/terminal/logger.rb#148
  def default_suffix(object = T.unsafe(nil)); end

  # source://console//lib/console/terminal/logger.rb#125
  def format_argument(argument, output); end

  # source://console//lib/console/terminal/logger.rb#168
  def format_object_subject(severity, prefix, subject, output); end

  # source://console//lib/console/terminal/logger.rb#121
  def format_options(options, output); end

  # source://console//lib/console/terminal/logger.rb#180
  def format_string_subject(severity, prefix, subject, output); end

  # source://console//lib/console/terminal/logger.rb#138
  def format_subject(severity, prefix, subject, buffer); end

  # source://console//lib/console/terminal/logger.rb#192
  def format_value(value, output); end

  # source://console//lib/console/terminal/logger.rb#200
  def time_offset_prefix; end
end

# source://console//lib/console/terminal/logger.rb#90
Console::Terminal::Logger::UNKNOWN = T.let(T.unsafe(nil), Symbol)

# source://console//lib/console/terminal/text.rb#11
class Console::Terminal::Text
  # @return [Text] a new instance of Text
  #
  # source://console//lib/console/terminal/text.rb#12
  def initialize(output); end

  # source://console//lib/console/terminal/text.rb#17
  def [](key); end

  # source://console//lib/console/terminal/text.rb#21
  def []=(key, value); end

  # @return [Boolean]
  #
  # source://console//lib/console/terminal/text.rb#25
  def colors?; end

  # Print out the given arguments.
  # When the argument is a symbol, look up the style and inject it into the output stream.
  # When the argument is a proc/lambda, call it with self as the argument.
  # When the argument is anything else, write it directly to the output.
  #
  # source://console//lib/console/terminal/text.rb#59
  def print(*arguments); end

  # Print out the arguments as per {#print}, followed by the reset sequence and a newline.
  #
  # source://console//lib/console/terminal/text.rb#73
  def print_line(*arguments); end

  # source://console//lib/console/terminal/text.rb#45
  def puts(*arguments, style: T.unsafe(nil)); end

  # source://console//lib/console/terminal/text.rb#32
  def reset; end

  # source://console//lib/console/terminal/text.rb#29
  def style(foreground, background = T.unsafe(nil), *attributes); end

  # source://console//lib/console/terminal/text.rb#35
  def write(*arguments, style: T.unsafe(nil)); end
end

# source://console//lib/console/terminal/xterm.rb#13
class Console::Terminal::XTerm < ::Console::Terminal::Text
  # @return [Boolean]
  #
  # source://console//lib/console/terminal/xterm.rb#38
  def colors?; end

  # source://console//lib/console/terminal/xterm.rb#64
  def reset; end

  # source://console//lib/console/terminal/xterm.rb#42
  def size; end

  # source://console//lib/console/terminal/xterm.rb#46
  def style(foreground, background = T.unsafe(nil), *attributes); end
end

# source://console//lib/console/terminal/xterm.rb#26
Console::Terminal::XTerm::ATTRIBUTES = T.let(T.unsafe(nil), Hash)

# source://console//lib/console/terminal/xterm.rb#14
Console::Terminal::XTerm::COLORS = T.let(T.unsafe(nil), Hash)

# source://console//lib/console/filter.rb#12
Console::UNKNOWN = T.let(T.unsafe(nil), String)

# source://console//lib/console/version.rb#7
Console::VERSION = T.let(T.unsafe(nil), String)
