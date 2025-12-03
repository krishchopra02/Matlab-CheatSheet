% Bubble Sort
function sorted = bubbleSort(arr)
    n = length(arr);
    sorted = arr;
    
    for i = 1:n-1
        for j = 1:n-i
            if sorted(j) > sorted(j+1)
                % Swap elements
                temp = sorted(j);
                sorted(j) = sorted(j+1);
                sorted(j+1) = temp;
            end
        end
    end
end

% Selection Sort
function sorted = selectionSort(arr)
    n = length(arr);
    sorted = arr;
    
    for i = 1:n-1
        min_idx = i;
        for j = i+1:n
            if sorted(j) < sorted(min_idx)
                min_idx = j;
            end
        end
        % Swap minimum element with first element
        if min_idx ~= i
            temp = sorted(i);
            sorted(i) = sorted(min_idx);
            sorted(min_idx) = temp;
        end
    end
end

% Quick Sort (recursive)
function sorted = quickSort(arr)
    if length(arr) <= 1
        sorted = arr;
        return;
    end
    
    pivot = arr(end);
    left = arr(arr < pivot);
    middle = arr(arr == pivot);
    right = arr(arr > pivot);
    
    sorted = [quickSort(left), middle, quickSort(right)];
end