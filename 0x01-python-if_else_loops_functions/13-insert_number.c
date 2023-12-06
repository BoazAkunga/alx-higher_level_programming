#include <stdio.h>
#include <stdlib.h>

#include "lists.h"
#include <unistd.h>

/*
 * insert_node - Insert a no into a sorted list
 * @head: Linked list
 * @number:  No to insert
 * Return: Ptr to new head else NULL
 */

listint_t *insert_node(listint_t **head, int number)
{
	listint_t *current = *head;
	listint_t *new = NULL;
	listint_t *tmp = NULL;

	if (!head)
		return (NULL);
	new = malloc(sizeof(listint_t));
	if (!new)
		return (NULL);
	new->n = number;
	new->next = NULL;

	if (!*head || (*head)->n > number)
	{
		new->next = *head;
		return (*head = new);
	}
	else
	{
		while (current && current->n < number)
		{
			tmp = current;
			current = current->next;
		}

		tmp->next = new;
		new->next = current;
	}
	return (new);
}
