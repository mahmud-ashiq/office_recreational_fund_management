<?php
include '../layouts/header.php';
include '../controllers/addProposal.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Proposal</title>
    <link rel="stylesheet" href="../css/style.css"> <!-- Optional: Link to your CSS file -->
</head>

<body>

    <h1>Add Proposal</h1>
    <form action="" method="POST"> <!-- Change action to your PHP script -->
        <table>
            <tr>
                <th><label for="description">Description:</label></th>
                <td><textarea id="description" name="description" rows="4" cols="50" required></textarea></td>
            </tr>
            <tr>
                <th><label for="propose_date">Propose Date:</label></th>
                <td><input type="date" id="propose_date" name="propose_date" required></td>
            </tr>
            <tr>
                <th><label for="budget">Budget:</label></th>
                <td><input type="number" id="budget" name="budget"></td>
            </tr>
            <tr>
                <th><label for="manager_id">Manager ID:</label></th>
                <td><input type="text" id="manager_id" name="manager_id" required></td>
            </tr>
            <tr>
                <th><label for="department_id">Department ID:</label></th>
                <td><input type="text" id="department_id" name="department_id" required></td>
            </tr>
        </table>
        <div class="button-container">
            <button type="submit" class="button" name="submit" id="submit">ADD</button>
        </div>
    </form>

</body>

</html>