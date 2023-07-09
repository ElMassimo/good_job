# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `thread` gem.
# Please instead update this file by running `bin/tapioca gem thread`.

# source://thread//lib/thread/pool.rb#473
class Thread
  class << self
    # Helper to create a pool.
    #
    # source://thread//lib/thread/pool.rb#475
    def pool(*args, &block); end
  end
end

# A pool is a container of a limited amount of threads to which you can add
# tasks to run.
#
# This is usually more performant and less memory intensive than creating a
# new thread for every task.
#
# source://thread//lib/thread/pool.rb#18
class Thread::Pool
  # Create the pool with minimum and maximum threads.
  #
  # The pool will start with the minimum amount of threads created and will
  # spawn new threads until the max is reached in case of need.
  #
  # A default block can be passed, which will be used to {#process} the passed
  # data.
  #
  # @return [Pool] a new instance of Pool
  #
  # source://thread//lib/thread/pool.rb#124
  def initialize(min, max = T.unsafe(nil), &block); end

  # Add a task to the pool which will execute the block with the given
  # argument.
  #
  # If no block is passed the default block will be used if present, an
  # ArgumentError will be raised otherwise.
  #
  # source://thread//lib/thread/pool.rb#257
  def <<(*args, &block); end

  # Enable auto trimming, unneeded threads will be deleted until the minimum
  # is reached.
  #
  # source://thread//lib/thread/pool.rb#165
  def auto_trim!; end

  # Check if auto trimming is enabled.
  #
  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#159
  def auto_trim?; end

  # Get the amount of tasks that still have to be run.
  #
  # source://thread//lib/thread/pool.rb#207
  def backlog; end

  # Are all tasks consumed?
  #
  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#214
  def done?; end

  # Check if there are idle workers.
  #
  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#246
  def idle?; end

  # Enable idle trimming. Unneeded threads will be deleted after the given number of seconds of inactivity.
  # The minimum number of threads is respeced.
  #
  # source://thread//lib/thread/pool.rb#185
  def idle_trim!(timeout); end

  # Check if idle trimming is enabled.
  #
  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#179
  def idle_trim?; end

  # Returns the value of attribute max.
  #
  # source://thread//lib/thread/pool.rb#115
  def max; end

  # Returns the value of attribute min.
  #
  # source://thread//lib/thread/pool.rb#115
  def min; end

  # Disable auto trimming.
  #
  # source://thread//lib/thread/pool.rb#172
  def no_auto_trim!; end

  # Turn of idle trimming.
  #
  # source://thread//lib/thread/pool.rb#192
  def no_idle_trim!; end

  # Add a task to the pool which will execute the block with the given
  # argument.
  #
  # If no block is passed the default block will be used if present, an
  # ArgumentError will be raised otherwise.
  #
  # source://thread//lib/thread/pool.rb#257
  def process(*args, &block); end

  # Resize the pool with the passed arguments.
  #
  # source://thread//lib/thread/pool.rb#199
  def resize(min, max = T.unsafe(nil)); end

  # Shut down the pool, it will block until all tasks have finished running.
  #
  # source://thread//lib/thread/pool.rb#312
  def shutdown; end

  # Shut down the pool instantly without finishing to execute tasks.
  #
  # source://thread//lib/thread/pool.rb#300
  def shutdown!; end

  # Check if the pool has been shut down.
  #
  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#154
  def shutdown?; end

  # Shutdown the pool after a given amount of time.
  #
  # source://thread//lib/thread/pool.rb#334
  def shutdown_after(timeout); end

  # Returns the value of attribute spawned.
  #
  # source://thread//lib/thread/pool.rb#115
  def spawned; end

  # Trim the unused threads, if forced threads will be trimmed even if there
  # are tasks waiting.
  #
  # source://thread//lib/thread/pool.rb#283
  def trim(force = T.unsafe(nil)); end

  # Force #{trim}.
  #
  # source://thread//lib/thread/pool.rb#295
  def trim!; end

  # Wait until all tasks are consumed. The caller will be blocked until then.
  #
  # source://thread//lib/thread/pool.rb#221
  def wait(what = T.unsafe(nil)); end

  # Returns the value of attribute waiting.
  #
  # source://thread//lib/thread/pool.rb#115
  def waiting; end

  private

  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#458
  def _done?; end

  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#462
  def _idle?; end

  # source://thread//lib/thread/pool.rb#466
  def done!; end

  # source://thread//lib/thread/pool.rb#368
  def spawn_thread; end

  # source://thread//lib/thread/pool.rb#423
  def spawn_timeout_thread; end

  # source://thread//lib/thread/pool.rb#350
  def timeout_for(task, timeout); end

  # source://thread//lib/thread/pool.rb#362
  def wake_up_timeout; end

  class << self
    # If true, tasks will allow raised exceptions to pass through.
    #
    # Similar to Thread.abort_on_exception
    #
    # source://thread//lib/thread/pool.rb#346
    def abort_on_exception; end

    # If true, tasks will allow raised exceptions to pass through.
    #
    # Similar to Thread.abort_on_exception
    #
    # source://thread//lib/thread/pool.rb#346
    def abort_on_exception=(_arg0); end
  end
end

# A task incapsulates a block being ran by the pool and the arguments to pass
# to it.
#
# source://thread//lib/thread/pool.rb#21
class Thread::Pool::Task
  # Create a task in the given pool which will pass the arguments to the
  # block.
  #
  # @return [Task] a new instance of Task
  #
  # source://thread//lib/thread/pool.rb#29
  def initialize(pool, *args, &block); end

  # Returns the value of attribute exception.
  #
  # source://thread//lib/thread/pool.rb#25
  def exception; end

  # Execute the task.
  #
  # source://thread//lib/thread/pool.rb#57
  def execute; end

  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#44
  def finished?; end

  # Returns the value of attribute pool.
  #
  # source://thread//lib/thread/pool.rb#25
  def pool; end

  # Raise an exception in the thread used by the task.
  #
  # source://thread//lib/thread/pool.rb#85
  def raise(exception); end

  # Returns the value of attribute result.
  #
  # source://thread//lib/thread/pool.rb#25
  def result; end

  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#40
  def running?; end

  # Returns the value of attribute started_at.
  #
  # source://thread//lib/thread/pool.rb#25
  def started_at; end

  # Terminate the exception with an optionally given exception.
  #
  # source://thread//lib/thread/pool.rb#90
  def terminate!(exception = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#52
  def terminated?; end

  # Returns the value of attribute thread.
  #
  # source://thread//lib/thread/pool.rb#25
  def thread; end

  # Returns the value of attribute timeout.
  #
  # source://thread//lib/thread/pool.rb#25
  def timeout; end

  # Force the task to timeout.
  #
  # source://thread//lib/thread/pool.rb#101
  def timeout!; end

  # @return [Boolean]
  #
  # source://thread//lib/thread/pool.rb#48
  def timeout?; end

  # Timeout the task after the given time.
  #
  # source://thread//lib/thread/pool.rb#106
  def timeout_after(time); end
end

# source://thread//lib/thread/pool.rb#23
class Thread::Pool::Task::Asked < ::Exception; end

# source://thread//lib/thread/pool.rb#22
class Thread::Pool::Task::Timeout < ::Exception; end
