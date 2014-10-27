class CCTV

	def initialize
		@observers = []
	end

	def register_observer observer
		@observers.push observer	
	end

	def	unregister_observer observer
		@observers.delete observer
	end

	def notify_observes
		@observers.each do |observer|
			observer.show_my_own_program
		end
	end

	def	set_new_program
		self.notify_observes
	end

end

class HNTV
	def initialize observable
		@cctv = observable
		@cctv.register_observer self 
	end

	def show_my_own_program
		p 'I am HuNan TV!'
	end
end

class HBTV
	def initialize observable
		@cctv = observable
		@cctv.register_observer self
	end
	
	def show_my_own_program
		p 'I am HeBei TV!'
	end
end

cctv = CCTV.new

HNTV.new cctv
HBTV.new cctv

cctv.set_new_program

