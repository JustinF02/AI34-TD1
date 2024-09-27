function currentTree = removeNode(currentTree, nodeID)
    % Ensure the node is not the root node (usually node 1 or 0, depending on your tree structure)
    if nodeID == 1
        disp('Cannot remove the root node!');
        return; % Exit the function early if it's the root node
    end
    
    % Check if node exists before removal
    if nodeID <= currentTree.nnodes
        % Get the parent node of the node to be removed
        parentNode = currentTree.getparent(nodeID);
        
        % Get the children of the node to be removed
        childNodes = currentTree.getchildren(nodeID);
        
        % Reassign the children to the parent node, if they exist
        if ~isempty(childNodes)
            for i = 1:length(childNodes)
                if childNodes(i) <= currentTree.nnodes
                    currentTree = currentTree.addnode(parentNode, currentTree.get(childNodes(i)));
                else
                    disp('Invalid child node ID!');
                end
            end
        end
        
        % Remove the node itself
        currentTree = currentTree.removenode(nodeID);
    else
        disp(['Invalid node ID: ', num2str(nodeID), ' Node does not exist in the tree!']);
    end
end
