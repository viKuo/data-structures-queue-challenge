require_relative 'queue'

describe 'Queue' do
	 let(:queue) { Queue.new }
  it 'can create a new queue of 1 element' do
    queue.enqueue(2)
    expect(queue.length).to eq 1
  end

  it 'can enqueue 3 elements' do
    queue.enqueue(2)
    queue.enqueue(5)
    queue.enqueue("yay")
    expect(queue.length).to eq 3
  end

  it 'can dequeue first of queue' do
    queue.enqueue(2)
    queue.enqueue(5)
    queue.enqueue("yay")
    queue.dequeue
    expect(queue.peel).to eq 5
  end

  it 'can dequeue and return' do
    queue.enqueue(2)
    queue.enqueue(5)
    queue.enqueue("yay")
    expect(queue.dequeue).to eq 2
  end

  it 'can return but not remove first of the queue' do
    queue.enqueue(2)
    queue.enqueue(5)
    queue.enqueue("yay")
    queue.peel
    expect(queue.peel).to eq 2
  end

  it 'can check if the queue is empty' do
    expect(queue.empty?).to eq true
  end

end
