import matplotlib.pyplot as plt

 Sample data
x = [1, 2, 3, 4, 5]
y = [2, 4, 1, 8, 7]
plt.ion()
# Create the plot
plt.plot(x, y, marker='o', linestyle='-', color='b', label='Line 1')

# Add title and labels
plt.title('Simple Line Plot')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')

# Add a legend
plt.legend()

# Show the plot
plt.grid(True)
plt.show()

print(2+2)
